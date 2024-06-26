Project.create!(
  [
    # A
    {
      title: "食品会社向け商品管理システムの保守",
      description:
        "食品会社向け商品管理システムの保守業務を担当しています。このシステムは、商品の在庫管理、賞味期限の追跡、注文処理、出荷管理など、食品業界特有の複雑な業務プロセスをサポートします。保守業務では、システムの安定稼働を確保するための定期的なメンテナンス、バグ修正、新機能の追加、パフォーマンスの最適化、ユーザーサポートなどを行います。これにより、食品会社が効率的かつ正確に業務を遂行できるよう支援しています。",
      start_date: "2020-08-01",
      end_date: "2020-09-31"
    },
    {
      title: "家電量販チェーン向け在庫管理システムの改修",
      description:
        "家電量販チェーン向け在庫管理システムの改修業務を担当しています。このシステムは、商品の入出庫管理、在庫の最適化、店舗間の在庫移動、発注処理などをサポートします。改修業務では、ユーザーからのフィードバックに基づき、システムの機能改善や新機能の追加を行い、操作性と効率性を向上させます。また、パフォーマンスの最適化やバグ修正を行い、システムの安定稼働を確保しています。",
      start_date: "2020-10-01",
      end_date: "2020-03-31"
    },
    {
      title: "運輸業向け原価計算システムの構築",
      description:
        "運輸業向け原価計算システムの構築業務を担当しています。このシステムは、輸送コストの計算、運行経費の管理、コスト分析、収益性の評価などを行います。システム構築では、要件定義から設計、開発、テスト、導入までを担当し、運輸業者が正確かつ効率的に原価管理を行えるよう支援します。",
      start_date: "2020-04-01",
      end_date: "2020-12-31"
    },
    {
      title: "食品会社向け商標審査システムおよび流通管理システムの構築",
      description:
        "食品会社向け商標審査システムおよび流通管理システムの構築業務を担当しています。商標審査システムは、商標登録の申請、審査、管理を行い、流通管理システムは、商品の在庫管理、配送追跡、注文処理をサポートします。システム構築では、ユーザーのニーズを満たすための設計、開発、テスト、導入を行い、食品会社の業務効率を向上させます。",
      start_date: "2021-01-01",
      end_date: "2021-04-30"
    },
    {
      title: "出版社エンタテインメントサイト構築",
      description:
        "出版社向けのエンタテインメントサイト構築業務を担当しています。このサイトは、書籍や雑誌の紹介、購入、レビュー投稿、会員管理などの機能を提供します。システム構築では、ユーザーエクスペリエンスの向上を目指し、デザイン設計、機能開発、テスト、導入を行い、読者と出版社の双方にとって価値のあるプラットフォームを提供します。",
      start_date: "2021-05-01",
      end_date: "2021-10-31"
    },
    {
      title: "製造業向け給与計算システムの改修",
      description:
        "製造業向け給与計算システムの改修業務を担当しています。このシステムは、従業員の給与計算、税金控除、福利厚生の管理などをサポートします。改修業務では、法律改正や会社のポリシー変更に対応するためのシステム調整、新機能追加、バグ修正を行い、正確かつ迅速な給与処理を実現します。",
      start_date: "2021-11-01",
      end_date: "2022-03-31"
    },
    # B
    {
      title: "保険会社向けインターネット受注管理システム",
      description:
        "保険会社向けインターネット受注管理システムの開発業務を担当しています。このシステムは、保険商品のオンライン注文、契約管理、顧客情報の管理などを行います。開発業務では、ユーザーインターフェースの設計、バックエンドの開発、セキュリティ対策、システムの最適化を行い、顧客が簡単かつ安全に保険を契約できる環境を提供します。",
      start_date: "2022-02-01",
      end_date: "2022-05-31"
    },
    {
      title: "通信販売業向け流通管理システム",
      description:
        "通信販売業向け流通管理システムの開発業務を担当しています。このシステムは、注文管理、在庫管理、配送追跡、返品処理など、通販業務の全般をサポートします。開発業務では、システムの設計、開発、テスト、導入を行い、効率的で正確な流通プロセスを実現し、顧客満足度の向上に貢献します。",
      start_date: "2022-06-01",
      end_date: "2023-01-31"
    },
    {
      title: "証券会社向け市場取引システム",
      description:
        "証券会社向け市場取引システムの開発業務を担当しています。このシステムは、株式や債券の取引、リスク管理、ポートフォリオ管理、リアルタイムの市場データの提供などを行います。開発業務では、高速で信頼性の高い取引環境を提供するための設計、開発、テスト、導入を行い、証券会社の競争力向上を支援します。",
      start_date: "2023-02-01",
      end_date: "2024-03-31"
    },
    {
      title: "証券会社向け税関事務処理システム",
      description:
        "証券会社向け税関事務処理システムの開発業務を担当しています。このシステムは、証券取引に伴う税務処理、報告書作成、税務コンプライアンスの管理などを行います。開発業務では、複雑な税務ルールに対応するためのシステム設計、開発、",
      start_date: "2024-04-01",
      end_date: nil
    }
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
      image_url: "http://back:3000/images/transportation_industry_image.jpg"
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
