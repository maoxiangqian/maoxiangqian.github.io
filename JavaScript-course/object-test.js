let questions=[]
let question1={
  category:"Science: Computers",
  question:"What does CPU stand for?",
  choices:["Central Process Unit","Computer Personal Unit","Central Processor Unit"],
  answer:"Central Processing Unit"
}
let question2={
  category:"Science: Computers",
  question:"In programming, what do you call a loop that never ends?",
  choices:["Infinite Loop","Endless Loop","While Loop"],
  answer:"Infinite Loop"
}
let question3={
  category:"Science: Computers",
  question:"What does RAM stand for?",
  choices:["Random Access Memory","Read Access Memory","Run Access Memory"],
  answer:"Random Access Memory"
}

let question4={
  category:"Science: Computers",
  question:"What does GPU stand for?",
  choices:["Graphics Processing Unit","General Processing Unit","Graphical Performance Unit"],
  answer:"Graphics Processing Unit"
}

let question5={
  category:"Science: Computers",
  question:"What does HTML stand for?",
  choices:["HyperText Markup Language","HyperText Machine Language","HyperText Marking Language"],
  answer:"HyperText Markup Language"
}

questions.push(question1)
questions.push(question2)
questions.push(question3)
questions.push(question4)
questions.push(question5)


const getRandomQuestion=(questions)=>{
  const randomIndex=Math.floor(Math.random()*questions.length)
  return questions[randomIndex]
}

const getRandomComputerChoice=(choices)=>{
  const randomIndex=Math.floor(Math.random()*choices.length)
  return choices[randomIndex] 
}

const getResults=(question,choice)=>{
  if(choice===question.answer){
    return "The computer's choice is correct!"
  } else {
    return "The computer's choice is wrong. The correct answer is " + question.answer
  }
}

console.log(getResults(getRandomQuestion(questions),getRandomComputerChoice(question1.choices)))


let person = { job: "Software Developer" };
console.log(person.job);
console.log(person["job"]);