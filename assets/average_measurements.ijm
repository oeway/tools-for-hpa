print("\\Clear");
run("Close All");
setOption("ExpandableArrays", true);
pathfile=File.openDialog("Choose the file to Open:");
filestring=File.openAsString(pathfile);
rows=split(filestring, "\n");
idPre=newArray;
idPost=newArray; 
z=newArray(rows.length)

for(i=1; i<rows.length; i++){
	columns=split(rows[i],",");
	data = split(columns[2],"_"); //split the 2nd column (the code) by "_"
	location = columns[4];
	//extracts the code to get link for the image
	if (location == "Mitochondria" && data.length>1){
		idPre[idPre.length]=parseInt(data[0]);
		idPost[idPost.length] = String.join(Array.slice(data, 1), "_");
		z[i] = 1;		
	} 
	else {
		z[i] = -1;
	}
}

/*
Array.print(z);
Array.print(idPre);
Array.print(idPost);
*/
 
//shows structure of results (x,y,id etc.)
print(rows[0] +",nucleus,Avg_Intens,Avg_Area,Avg_Std,Avg_Mode,Avg_Feret,Avg_Median,Avg_Skewness,Avg_Kurtosis"); 

n=0;
//runs image analysis
for(j=1; j<rows.length; j++){
	if (z[j] != -1){		//reads all except for those not equal to -1
		//delete old ones if there are any
		run("Close All");
		roiManager("reset");
		run("Clear Results");

		//opens up image
		open("https://images.proteinatlas.org/" + idPre[n] + "/" + idPost[n] + "_blue_red_green.jpg");

		//get the image
		title = getTitle();		 //"686_F11_1_blue_red_green.jpg"

		//run("Channels Tool...");
		run("Make Composite");
		run("Split Channels");
		selectWindow("C1-" + title);
		rename("1-red");
		selectWindow("C2-" + title);
		rename("2-green");
		selectWindow("C3-" + title);
		rename("3-blue");

		// filter the 1st picture, set a threshold
		selectWindow("3-blue");
		run("Median...", "radius=8");
		setAutoThreshold("Huang dark");
		setOption("BlackBackground", false);
		run("Convert to Mask");
		run("Fill Holes");

		//get the rois of all nuclei in the roi manager
		if (n==0){
			minSize = getNumber("enter min size of nuclei", 2000);
		}
		run("Analyze Particles...", "size=" +  minSize+ "-Infinity add");
		roiManager("Show None");

		//create roi for each nucleus
		nRoi = roiManager("count");
		for(i = 0; i < nRoi; i++) {
			roiManager("Select", i);
			run("Enlarge...", "enlarge=-10");
			run("Make Band...", "band=10");
			roiManager("Update");
		}

		//measure signal image
		run("Set Measurements...", "area mean standard modal min perimeter feret's median skewness kurtosis area_fraction stack display redirect=None decimal=0");
		selectWindow("2-green");
		roiManager("deselect");
		roiManager("measure");

		//print results out in log output
		totIntens = 0;
		totArea = 0;
		totStd = 0;
		totMode = 0;
		totFeret = 0;
		totMedian = 0;
		totSkew = 0;
		totKurt = 0;
		selectWindow("Results");
		
		for(i = 0; i < nRoi; i++) {
			totIntens += getResult("Mean", i);
			totArea += getResult("Area", i);
			totStd += getResult("StdDev", i);
			totMode += getResult("Mode", i);
			totFeret += getResult("Feret", i);
			totMedian += getResult("Median", i);
			totSkew += getResult("Skew", i);
			totKurt += getResult("Kurt", i);
		}
		
		avgArea = totArea/nRoi;
		avgIntens = totIntens/nRoi;
		avgStd = totStd/nRoi;
		avgMode = totMode/nRoi;
		avgFeret = totFeret/nRoi;
		avgMedian = totMedian/nRoi;
		avgSkew = totSkew/nRoi;
		avgKurt = totKurt/nRoi;

		print(rows[j], "," , nRoi, "," , avgIntens , "," , avgArea, "," , avgStd, "," , avgMode, "," , avgFeret, "," , avgMedian, "," , avgSkew, "," , avgKurt  );
		n++; //iterates for every n'th step aka performs the next serial code
	}
}

//selects and saves log window
selectWindow("Log");
saveAs("Text", "C:/Users/User/Desktop/Log.csv");
