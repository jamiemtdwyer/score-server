scores = [
  {
    name: "Pierre Poutine",
    score: 1_000_000
  },
  {
    name: "Disgraced Former Prime Ministerial Candidate Andrew Scheer",
    score: 1
  }
]

scores.each do |score|
  Score.create(score)
end