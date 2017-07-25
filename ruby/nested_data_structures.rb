	portfolio = {
    stocks: {
        technology: {
            large_cap: [
              "Apple", 
               ["Alphabet", "Google A", "Google B"],
               "Microsoft",
               "Facebook"
               ]
        },
        mid_cap: {
            "Nvidia": 400,
            "Buffalo Wild Wings":300,
            "Trimble Inc.": 800
        },
        small_cap: {
            "Oclaro": 900,
            "TriState Capital": 300,
            "Dynavax": 5000
        }
      },
    bonds: {
        exxon: {
            "2020": 6.5,
            "2025": 7.25,
            "2030": 8.75
        },
        verizon: {
            "2018": 4.5,
            "2021": 6.25,
            "2027": 8.10
        },
    },
    cash: {
        money_market: {
            vanguard_short_term: 200000,
            vanguard_long_term: 150000,
        },
        checking_accounts: [
          50000,
          25000,
          10000 
          ]
    }
}

p portfolio[:stocks][:technology][:large_cap][1]
p portfolio[:stocks][:technology][:large_cap].push("Netflix")
p portfolio[:bonds][:exxon][:"2020"]
p portfolio[:cash]
portfolio[:stocks][:small_cap][:"Oclaro"]=1300
p portfolio[:stocks][:small_cap][:"Oclaro"]
p portfolio
