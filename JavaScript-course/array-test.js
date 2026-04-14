function convertHTML(str){
  let res=str.replaceAll(/&/g,"&amp;")
  res=res.replaceAll(/</g,"&lt;")
  res=res.replaceAll(/>/g,"&gt;")
  res=res.replaceAll(/"/g,"&quot;")
  res=res.replaceAll(/'/g,"&apos;")
  return res
}

console.log(convertHTML("Dolce & Gabbana"))

console.log(Number(undefined),Number(null))