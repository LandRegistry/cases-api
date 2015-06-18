#receiving case into caselist
def receive_case()
  case1 = '{
  "cases": [
    {
    "titleNumber": "DN1",
    "applicationReference": "LR0001",
    "dateReceived": "1997-02-19T00:00:01Z",
    "entries": [
      {
        "type": "charge",
        "date": "1997-02-13T12:00:00Z",
        "text": "REGISTERED CHARGE dated 13 February 1997."
      },
      {
        "type": "charge proprietor",
        "date": "1997-02-13T12:00:00Z",
        "text": "Proprietor: GE Money Home Finance Limited (Co. Regn. No. 592986) of Building 4, Hatters Lane, Croxley Green Business Park, Watford WD18 8YF"
      }
    ],
    "mortgageDate": "1997-02-13T00:00:01Z",
    "lender": "GE Money Home Finance Limited"
  },
  {
  "titleNumber": "DN1",
  "applicationReference": "LR0101",
  "dateReceived": "1997-02-18T00:00:01Z",
  "entries": [
    {
      "type": "charge",
      "date": "1997-02-13T12:00:00Z",
      "text": "REGISTERED CHARGE dated 13 February 1997."
    },
    {
      "type": "charge proprietor",
      "date": "1997-02-13T12:00:00Z",
      "text": "Proprietor: GE Money Home Finance Limited (Co. Regn. No. 592986) of Building 4, Hatters Lane, Croxley Green Business Park, Watford WD18 8YF"
    }
  ],
  "mortgageDate": "1997-02-13T00:00:01Z",
  "lender": "GE Money Home Finance Limited"
  },
  {
  "titleNumber": "DN1",
  "applicationReference": "LR1011",
  "dateReceived": "1993-11-01T00:00:01Z",
  "entries": [
    {
      "type": "charge",
      "date": "1993-08-13T12:00:00Z",
      "text": "REGISTERED CHARGE dated 13 August 1993."
    },
    {
      "type": "charge proprietor",
      "date": "1993-08-13T12:00:00Z",
      "text": "Proprietor: GE Money Home Finance Limited (Co. Regn. No. 592986) of Building 4, Hatters Lane, Croxley Green Business Park, Watford WD18 8YF"
    }
  ],
  "mortgageDate": "1993-08-13T12:00:00Z",
  "lender": "GE Money Home Finance Limited"
  },
  {
    "titleNumber": "DT91660",
    "applicationReference": "NB586",
    "dateReceived": "2007-10-08T12:00:00Z",
    "entries": [
        {
            "type": "charge",
            "date": "2007-08-13T12:00:00Z",
            "text": "REGISTERED CHARGE dated 13 August 2007."
        },
        {
            "type": "charge proprietor",
            "date": "2007-08-13T12:00:00Z",
            "text": "Proprietor: GE Money Home Finance Limited (Co. Regn. No. 592986) of Building 4, Hatters Lane, Croxley Green Business Park, Watford WD18 8YF."
        }
    ],
    "mortgageDate": "2007-08-13T12:00:00Z",
    "lender": "GE Money Home Finance Limited"
  }
  ]
}'

  #converts JSON object into hash array
  case_hash = JSON.parse(case1)

  return case_hash["cases"][0]
end
