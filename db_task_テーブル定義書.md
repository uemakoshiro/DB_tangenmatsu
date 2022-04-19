# テーブル一覧

|テーブル一覧| | | |
|:----|:----|:----|:----|
|No.|論理テーブル名|物理テーブル名|備考|
|1| |public.goods| |
|2| |public.pay| |
|3| |public.pay_method| |
|4| |public.receipt| |
|5| |public.sales| |
|6| |public.store| |


# goods

|テーブル情報| | | | | | |
|:----|:----|:----|:----|:----|:----|:----|
| |システム名| | |作成者|axiz| |
| |サブシステム名| | |作成日|2022/04/19| |
| |スキーマ名|public| |更新日| | |
| |論理テーブル名| | |RDBMS|PostgreSQL 14.2, compiled by Visual C++ build 1914, 64-bit 14.2| |
| |物理テーブル名|goods| | | | |
| |備考| | | | | |
| | | | | | | |
| | | | | | | |
| | | | | | | |
| | | | | | | |
|カラム情報| | | | | | |
|No.|論理名|物理名|データ型|Not Null|デフォルト|備考|
|1| |商品id|integer|Yes (PK)| | |
|2| |商品名|character varying(50)|Yes| | |
|3| |単価|integer|Yes| | |
|4| |値引率|integer| | | |
| | | | | | | |
|インデックス情報| | | | | | |
|No.|インデックス名|カラムリスト| |主キー|ユニーク|備考|
|1|goods_pkey|商品id| |Yes|Yes| |
| | | | | | | |
|制約情報| | | | | | |
|No.|制約名|種類|制約定義| | | |
|1|2200_16578_1_not_null|CHECK|商品id IS NOT NULL| | | |
|2|2200_16578_2_not_null|CHECK|商品名 IS NOT NULL| | | |
|3|2200_16578_3_not_null|CHECK|単価 IS NOT NULL| | | |
|4|goods_pkey|PRIMARY KEY|商品id| | | |
| | | | | | | |
|外部キー情報| | | | | | |
|No.|外部キー名|カラムリスト| |参照先テーブル名| |参照先カラムリスト|
| | | | | | | |
|外部キー情報(PK側)| | | | | | |
|No.|外部キー名|カラムリスト| |参照元テーブル名| |参照元カラムリスト|
|1|sales_商品id_fkey|商品id| |public.sales| |商品id|
| | | | | | | |
|トリガー情報| | | | | | |
|No.|トリガー名|イベント| |タイミング| |条件|
| | | | | | | |
|RDBMS固有の情報| | | | | | |
|No.|プロパティ名| |プロパティ値| | | |
|1|schemaname| |public| | | |
|2|tablename| |goods| | | |
|3|tableowner| |axizuser| | | |
|4|tablespace| | | | | |
|5|hasindexes| |True| | | |
|6|hasrules| |False| | | |
|7|hastriggers| |True| | | |
|8|rowsecurity| |False| | | |


# pay

|テーブル情報| | | | | | |
|:----|:----|:----|:----|:----|:----|:----|
| |システム名| | |作成者|axiz| |
| |サブシステム名| | |作成日|2022/04/19| |
| |スキーマ名|public| |更新日| | |
| |論理テーブル名| | |RDBMS|PostgreSQL 14.2, compiled by Visual C++ build 1914, 64-bit 14.2| |
| |物理テーブル名|pay| | | | |
| |備考| | | | | |
| | | | | | | |
| | | | | | | |
| | | | | | | |
| | | | | | | |
|カラム情報| | | | | | |
|No.|論理名|物理名|データ型|Not Null|デフォルト|備考|
|1| |id|integer|Yes (PK)| | |
|2| |伝票番号|integer|Yes| | |
|3| |支払方法１|integer|Yes| | |
|4| |支払方法２|integer| | | |
|5| |受領額|integer| | | |
|6| |お釣り|integer| | | |
|7| |使用ポイント|integer| | | |
| | | | | | | |
|インデックス情報| | | | | | |
|No.|インデックス名|カラムリスト| |主キー|ユニーク|備考|
|1|pay_pkey|id| |Yes|Yes| |
| | | | | | | |
|制約情報| | | | | | |
|No.|制約名|種類|制約定義| | | |
|1|2200_16785_1_not_null|CHECK|id IS NOT NULL| | | |
|2|2200_16785_2_not_null|CHECK|伝票番号 IS NOT NULL| | | |
|3|2200_16785_3_not_null|CHECK|支払方法１ IS NOT NULL| | | |
|4|pay_pkey|PRIMARY KEY|id| | | |
| | | | | | | |
|外部キー情報| | | | | | |
|No.|外部キー名|カラムリスト| |参照先テーブル名| |参照先カラムリスト|
|1|pay_伝票番号_fkey|伝票番号| |public.receipt| |伝票番号|
|2|pay_支払方法１_fkey|支払方法１| |public.pay_method| |id|
|3|pay_支払方法２_fkey|支払方法２| |public.pay_method| |id|
| | | | | | | |
|外部キー情報(PK側)| | | | | | |
|No.|外部キー名|カラムリスト| |参照元テーブル名| |参照元カラムリスト|
| | | | | | | |
|トリガー情報| | | | | | |
|No.|トリガー名|イベント| |タイミング| |条件|
| | | | | | | |
|RDBMS固有の情報| | | | | | |
|No.|プロパティ名| |プロパティ値| | | |
|1|schemaname| |public| | | |
|2|tablename| |pay| | | |
|3|tableowner| |axizuser| | | |
|4|tablespace| | | | | |
|5|hasindexes| |True| | | |
|6|hasrules| |False| | | |
|7|hastriggers| |True| | | |
|8|rowsecurity| |False| | | |


# pay_method

|テーブル情報| | | | | | |
|:----|:----|:----|:----|:----|:----|:----|
| |システム名| | |作成者|axiz| |
| |サブシステム名| | |作成日|2022/04/19| |
| |スキーマ名|public| |更新日| | |
| |論理テーブル名| | |RDBMS|PostgreSQL 14.2, compiled by Visual C++ build 1914, 64-bit 14.2| |
| |物理テーブル名|pay_method| | | | |
| |備考| | | | | |
| | | | | | | |
| | | | | | | |
| | | | | | | |
| | | | | | | |
|カラム情報| | | | | | |
|No.|論理名|物理名|データ型|Not Null|デフォルト|備考|
|1| |id|integer|Yes (PK)| | |
|2| |支払方法|character varying(50)|Yes| | |
| | | | | | | |
|インデックス情報| | | | | | |
|No.|インデックス名|カラムリスト| |主キー|ユニーク|備考|
|1|pay_method_pkey|id| |Yes|Yes| |
| | | | | | | |
|制約情報| | | | | | |
|No.|制約名|種類|制約定義| | | |
|1|2200_16583_1_not_null|CHECK|id IS NOT NULL| | | |
|2|2200_16583_2_not_null|CHECK|支払方法 IS NOT NULL| | | |
|3|pay_method_pkey|PRIMARY KEY|id| | | |
| | | | | | | |
|外部キー情報| | | | | | |
|No.|外部キー名|カラムリスト| |参照先テーブル名| |参照先カラムリスト|
| | | | | | | |
|外部キー情報(PK側)| | | | | | |
|No.|外部キー名|カラムリスト| |参照元テーブル名| |参照元カラムリスト|
|1|pay_支払方法１_fkey|id| |public.pay| |支払方法１|
|2|pay_支払方法２_fkey|id| |public.pay| |支払方法２|
| | | | | | | |
|トリガー情報| | | | | | |
|No.|トリガー名|イベント| |タイミング| |条件|
| | | | | | | |
|RDBMS固有の情報| | | | | | |
|No.|プロパティ名| |プロパティ値| | | |
|1|schemaname| |public| | | |
|2|tablename| |pay_method| | | |
|3|tableowner| |axizuser| | | |
|4|tablespace| | | | | |
|5|hasindexes| |True| | | |
|6|hasrules| |False| | | |
|7|hastriggers| |True| | | |
|8|rowsecurity| |False| | | |


# receipt

|テーブル情報| | | | | | |
|:----|:----|:----|:----|:----|:----|:----|
| |システム名| | |作成者|axiz| |
| |サブシステム名| | |作成日|2022/04/19| |
| |スキーマ名|public| |更新日| | |
| |論理テーブル名| | |RDBMS|PostgreSQL 14.2, compiled by Visual C++ build 1914, 64-bit 14.2| |
| |物理テーブル名|receipt| | | | |
| |備考| | | | | |
| | | | | | | |
| | | | | | | |
| | | | | | | |
| | | | | | | |
|カラム情報| | | | | | |
|No.|論理名|物理名|データ型|Not Null|デフォルト|備考|
|1| |伝票番号|integer|Yes (PK)| | |
|2| |店舗id|integer|Yes| | |
|3| |日付|date|Yes| | |
|4| |時間|time without time zone|Yes| | |
|5| |レジ番号|integer|Yes| | |
|6| |責任者id|character varying(50)|Yes| | |
| | | | | | | |
|インデックス情報| | | | | | |
|No.|インデックス名|カラムリスト| |主キー|ユニーク|備考|
|1|receipt_pkey|伝票番号| |Yes|Yes| |
| | | | | | | |
|制約情報| | | | | | |
|No.|制約名|種類|制約定義| | | |
|1|2200_16760_1_not_null|CHECK|伝票番号 IS NOT NULL| | | |
|2|2200_16760_2_not_null|CHECK|店舗id IS NOT NULL| | | |
|3|2200_16760_3_not_null|CHECK|日付 IS NOT NULL| | | |
|4|2200_16760_4_not_null|CHECK|時間 IS NOT NULL| | | |
|5|2200_16760_5_not_null|CHECK|レジ番号 IS NOT NULL| | | |
|6|2200_16760_6_not_null|CHECK|責任者id IS NOT NULL| | | |
|7|receipt_pkey|PRIMARY KEY|伝票番号| | | |
| | | | | | | |
|外部キー情報| | | | | | |
|No.|外部キー名|カラムリスト| |参照先テーブル名| |参照先カラムリスト|
|1|receipt_店舗id_fkey|店舗id| |public.store| |店舗id|
| | | | | | | |
|外部キー情報(PK側)| | | | | | |
|No.|外部キー名|カラムリスト| |参照元テーブル名| |参照元カラムリスト|
|1|pay_伝票番号_fkey|伝票番号| |public.pay| |伝票番号|
|2|sales_伝票番号_fkey|伝票番号| |public.sales| |伝票番号|
| | | | | | | |
|トリガー情報| | | | | | |
|No.|トリガー名|イベント| |タイミング| |条件|
| | | | | | | |
|RDBMS固有の情報| | | | | | |
|No.|プロパティ名| |プロパティ値| | | |
|1|schemaname| |public| | | |
|2|tablename| |receipt| | | |
|3|tableowner| |axizuser| | | |
|4|tablespace| | | | | |
|5|hasindexes| |True| | | |
|6|hasrules| |False| | | |
|7|hastriggers| |True| | | |
|8|rowsecurity| |False| | | |


# sales

|テーブル情報| | | | | | |
|:----|:----|:----|:----|:----|:----|:----|
| |システム名| | |作成者|axiz| |
| |サブシステム名| | |作成日|2022/04/19| |
| |スキーマ名|public| |更新日| | |
| |論理テーブル名| | |RDBMS|PostgreSQL 14.2, compiled by Visual C++ build 1914, 64-bit 14.2| |
| |物理テーブル名|sales| | | | |
| |備考| | | | | |
| | | | | | | |
| | | | | | | |
| | | | | | | |
| | | | | | | |
|カラム情報| | | | | | |
|No.|論理名|物理名|データ型|Not Null|デフォルト|備考|
|1| |id|integer|Yes (PK)| | |
|2| |伝票番号|integer|Yes| | |
|3| |商品id|integer|Yes| | |
|4| |個数|integer|Yes| | |
|5| |消費税率|integer|Yes| | |
| | | | | | | |
|インデックス情報| | | | | | |
|No.|インデックス名|カラムリスト| |主キー|ユニーク|備考|
|1|sales_pkey|id| |Yes|Yes| |
| | | | | | | |
|制約情報| | | | | | |
|No.|制約名|種類|制約定義| | | |
|1|2200_16770_1_not_null|CHECK|id IS NOT NULL| | | |
|2|2200_16770_2_not_null|CHECK|伝票番号 IS NOT NULL| | | |
|3|2200_16770_3_not_null|CHECK|商品id IS NOT NULL| | | |
|4|2200_16770_4_not_null|CHECK|個数 IS NOT NULL| | | |
|5|2200_16770_5_not_null|CHECK|消費税率 IS NOT NULL| | | |
|6|sales_pkey|PRIMARY KEY|id| | | |
| | | | | | | |
|外部キー情報| | | | | | |
|No.|外部キー名|カラムリスト| |参照先テーブル名| |参照先カラムリスト|
|1|sales_伝票番号_fkey|伝票番号| |public.receipt| |伝票番号|
|2|sales_商品id_fkey|商品id| |public.goods| |商品id|
| | | | | | | |
|外部キー情報(PK側)| | | | | | |
|No.|外部キー名|カラムリスト| |参照元テーブル名| |参照元カラムリスト|
| | | | | | | |
|トリガー情報| | | | | | |
|No.|トリガー名|イベント| |タイミング| |条件|
| | | | | | | |
|RDBMS固有の情報| | | | | | |
|No.|プロパティ名| |プロパティ値| | | |
|1|schemaname| |public| | | |
|2|tablename| |sales| | | |
|3|tableowner| |axizuser| | | |
|4|tablespace| | | | | |
|5|hasindexes| |True| | | |
|6|hasrules| |False| | | |
|7|hastriggers| |True| | | |
|8|rowsecurity| |False| | | |


# store

|テーブル情報| | | | | | |
|:----|:----|:----|:----|:----|:----|:----|
| |システム名| | |作成者|axiz| |
| |サブシステム名| | |作成日|2022/04/19| |
| |スキーマ名|public| |更新日| | |
| |論理テーブル名| | |RDBMS|PostgreSQL 14.2, compiled by Visual C++ build 1914, 64-bit 14.2| |
| |物理テーブル名|store| | | | |
| |備考| | | | | |
| | | | | | | |
| | | | | | | |
| | | | | | | |
| | | | | | | |
|カラム情報| | | | | | |
|No.|論理名|物理名|データ型|Not Null|デフォルト|備考|
|1| |店舗id|integer|Yes (PK)| | |
|2| |店舗名|character varying(50)|Yes| | |
|3| |住所|character varying(50)|Yes| | |
|4| |電話番号|character varying(20)|Yes| | |
| | | | | | | |
|インデックス情報| | | | | | |
|No.|インデックス名|カラムリスト| |主キー|ユニーク|備考|
|1|store_pkey|店舗id| |Yes|Yes| |
| | | | | | | |
|制約情報| | | | | | |
|No.|制約名|種類|制約定義| | | |
|1|2200_16573_1_not_null|CHECK|店舗id IS NOT NULL| | | |
|2|2200_16573_2_not_null|CHECK|店舗名 IS NOT NULL| | | |
|3|2200_16573_3_not_null|CHECK|住所 IS NOT NULL| | | |
|4|2200_16573_4_not_null|CHECK|電話番号 IS NOT NULL| | | |
|5|store_pkey|PRIMARY KEY|店舗id| | | |
| | | | | | | |
|外部キー情報| | | | | | |
|No.|外部キー名|カラムリスト| |参照先テーブル名| |参照先カラムリスト|
| | | | | | | |
|外部キー情報(PK側)| | | | | | |
|No.|外部キー名|カラムリスト| |参照元テーブル名| |参照元カラムリスト|
|1|receipt_店舗id_fkey|店舗id| |public.receipt| |店舗id|
| | | | | | | |
|トリガー情報| | | | | | |
|No.|トリガー名|イベント| |タイミング| |条件|
| | | | | | | |
|RDBMS固有の情報| | | | | | |
|No.|プロパティ名| |プロパティ値| | | |
|1|schemaname| |public| | | |
|2|tablename| |store| | | |
|3|tableowner| |axizuser| | | |
|4|tablespace| | | | | |
|5|hasindexes| |True| | | |
|6|hasrules| |False| | | |
|7|hastriggers| |True| | | |
|8|rowsecurity| |False| | | |
