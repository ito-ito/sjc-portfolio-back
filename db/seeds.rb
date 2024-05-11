Project.create!(
  [
    # A
    {
      title: "食品会社向け商品管理システムの保守",
      start_date: "2020-08-01",
      end_date: "2020-09-31"
    },
    {
      title: "家電量販チェーン向け在庫管理システムの改修",
      start_date: "2020-10-01",
      end_date: "2020-03-31"
    },
    {
      title: "運輸業向け原価計算システムの構築",
      start_date: "2020-04-01",
      end_date: "2020-12-31"
    },
    {
      title: "食品会社向け商標審査システムおよび流通管理システムの構築",
      start_date: "2021-01-01",
      end_date: "2021-04-30"
    },
    {
      title: "出版社エンタテインメントサイト構築",
      start_date: "2021-05-01",
      end_date: "2021-10-31"
    },
    {
      title: "製造業向け給与計算システムの改修",
      start_date: "2021-11-01",
      end_date: "2022-03-31"
    },
    # B
    {
      title: "保険会社向けインターネット受注管理システム",
      start_date: "2022-02-01",
      end_date: "2022-05-31"
    },
    {
      title: "通信販売業向け流通管理システム",
      start_date: "2022-06-01",
      end_date: "2023-01-31"
    },
    {
      title: "証券会社向け市場取引システム",
      start_date: "2023-02-01",
      end_date: "2024-03-31"
    },
    { title: "証券会社向け税関事務処理システム", start_date: "2024-04-01", end_date: nil }
  ]
)

# Skill
%w[JavaScript Python TypeScript Java C# C++ PHP C Ruby Go].each do |language|
  Skill.create!(name: language, level: rand(1..100))
end

# Product
Product.create!(
  [
    {
      name: "運輸業向け原価計算システム",
      description:
        "運送業者が効率的かつ正確に費用を計算し、収益性を最適化するためのソリューションです。輸送コスト、燃料費、人件費などの要因を考慮し、適切な価格設定や運用戦略の決定を支援します。",
      url: nil,
      image_url:
        "http://back:3000/images/transportation_industry_image.jpg"
    },
    {
      name: "食品会社向け商標審査システムおよび流通管理システム",
      description: "商標の審査を自動化し、品質管理を強化するソリューションです。製品の流通をトレースし、品質と安全性を確保します。",
      url: nil,
      image_url: "http://back:3000/images/food_industry_image.jpg"
    },
    {
      name: "出版社エンタテインメントサイト",
      description:
        "出版物の最新情報やエンターテイメントコンテンツを提供するプラットフォームです。書籍、漫画、映画、音楽などの情報を提供し、読者やファンとの交流を促進します。",
      url: nil,
      image_url: "http://back:3000/images/publishing_industry_image.jpg"
    }
  ]
)
