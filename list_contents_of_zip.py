from zipfile import ZipFile


file = './ExampleData/myzip.zip'



with ZipFile(file, 'r') as zipObj:
	filelist = zipObj.namelist()
	print(filelist)