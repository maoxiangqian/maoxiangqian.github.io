function sortByPriorityDescending(crew){
  for(let i=0;i<crew.length;i++){
    for(let j=i;j<crew.length-1;j++){
        if(crew[j].priority<crew[j+1].priority){
          let tmp=crew[j]
          crew[j]=crew[j+1]
          crew[j+1]=tmp
        }
    }
    console.log(crew)
  }
}

const remainingCrew = [
  { id: 2, name: "Bart", role: "Pilot", isEVAEligible: false, priority: 8 },
  { id: 3, name: "Caroline", role: "Engineer", isEVAEligible: true, priority: 4 },
  { id: 4, name: "Diego", role: "Scientist", isEVAEligible: false, priority: 1 },
  { id: 5, name: "Elise", role: "Medic", isEVAEligible: true, priority: 7 },
  { id: 6, name: "Felix", role: "Navigator", isEVAEligible: true, priority: 6 },
  { id: 7, name: "Gertrude", role: "Communications", isEVAEligible: false, priority: 4 },
  { id: 8, name: "Hank", role: "Mechanic", isEVAEligible: true, priority: 2 },
  { id: 9, name: "Irene", role: "Specialist", isEVAEligible: true, priority: 5 },
  { id: 10, name: "Joan", role: "Technician", isEVAEligible: false, priority: 1 },
];

sortByPriorityDescending(remainingCrew)
