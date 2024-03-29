# 数値計算の基礎

## 川上一郎 著

2008年1月23日改定  
<http://www7.ocn.ne.jp/~kawa1/>

# 目次

## [第1章　数値計算](./01.md)
  
1.1 値計算と誤差  
　1.1.1 [誤差・絶対誤差・相対誤差](./01.md#111-誤差・絶対誤差・相対誤差)  
　1.1.2 [許容誤差](./01.md#112-許容誤差)  
　1.1.3 [丸めの誤差](./01.md#113-丸めの誤差)  
　1.1.4 [桁落ち](./01.md#114-桁落ち)  
　1.1.5 [打切り誤差](./01.md#115-打切り誤差)  
1.2 数値計算の手順と  
　1.2.1 構造化プログラミング  
　1.2.2 PAD の制御構造  
　1.2.3 PAD と FORTRAN  
1.3 [第1章の問題](./01.md#13-第1章の問題)  

## [第2章 非線形方程式](./02.md)

2.1 非線形方程式  
　2.1.1 [線形方程式と非線形方程式](./02.md#211線形方程式と非線形方程式)  
2.2 ニュートン法  
　2.2.1 [ニュートン法の公式](./02.md#221-ニュートン法の公式)  
　2.2.2 [ニュートン法の収束性](./02.md#222-ニュートン法の収束性)  
　2.2.3 [ニュートン法の収束判定](./02.md#223-ニュートン法の収束判定)  
　2.2.4 [縮小写像の原理](./02.md#224-縮小写像の原理)  
　2.2.5 [ニュートン法の実際](./02.md#225-ニュートン法の実際)  
　2.2.6 [連立非線形方程式のニュートン法](./02.md#226-連立非線形方程式のニュートン法)  
2.3 代数方程式  
　2.3.1 [代数方程式の基本的性質](./02.md#231-代数方程式の基本的性質)  
　2.3.2 [多項式とその導関数の値](./02.md#232-多項式とその導関数の値)  
　2.3.3 [代数方程式のニュートン法](./02.md#233-代数方程式のニュートン法)  
　2.3.4 [アーバスの初期値](./02.md#234-アーバスの初期値)  
　2.3.5 [DKA法](./02.md#235-dka法)  
2.4 [第2章の問題](./02.md#24-第2章の問題)  

## [第3章 連立1次方程式](./03.md)

3.1 直接法と反復法  
　3.1.1 [直接法・反復法](./03.md#311-直接法・反復法)  
3.2 ガウスの消去法  
　3.2.1 [ガウスの消去法](./03.md#321-ガウスの消去法)  
　3.2.2 [前進消去](./03.md#322-前進消去)  
　3.2.3 [後退代入](./03.md#323-後退代入)  
　3.2.4 [ピボット選択](./03.md#324-ピボット選択)  
3.3 LU分解法  
　3.3.1 [LU分解法](./03.md#331-textlu-分解法)  
　3.3.2 [LU分解](./03.md#332-textlu-分解)  
　3.3.3 [ピボット選択](./03.md#333-ピボット選択)  
　3.3.4 [LU分解法の手順](./03.md#334-textlu-分解法の手順)  
3.4 コレスキー分解法  
　3.4.1 [コレスキー分解](./03.md#341-コレスキー分解)  
　3.4.2 [改訂コレスキー分解](./03.md#342-改訂コレスキー分解)  
3.5 ベクトルのノルム、行列のノルム、条件数  
　3.5.1 [ベクトルのノルム](./03.md#351-ベクトルのノルム)  
　3.5.2 [行列のノルム](./03.md#352-行列のノルム)  
　3.5.3 [条件数](./03.md#353-条件数)  
3.6 ヤコビ法  
　3.6.1 [ヤコビ法の公式](./03.md#361-ヤコビ-法の公式)  
　3.6.2 [ヤコビ法の収束性](./03.md#362-ヤコビ-法の収束性)  
3.7 ガウス・ザイデル法  
　3.7.1 [ガウス・ザイデル法の公式](./03.md#371-ガウスザイデル法の公式)  
　3.7.2 [ガウス・ザイデル法の収束性](./03.md#372-ガウスザイデル法の収束性)  
3.8 SOR法  
　3.8.1 [SOR法](./03.md#381-sor-法)  
　3.8.2 [SOR法が収束するための必要条件](./03.md#382-sor-法が収束するための必要条件)  
　3.8.3 [最適緩和係数](./03.md#383-最適緩和係数)  
　3.8.4 [SOR法の手順](./03.md#384-sor-法の手順)  
3.9 共役勾配法  
　3.9.1 [関数の最小値探索](./03.md#391-関数の最小値探索)  
　3.9.2 [対称行列の正定値性](./03.md#392-対称行列の正定値性)  
　3.9.3 [最急降下法](./03.md#393-最急降下法)  
　3.9.4 [共役勾配法](./03.md#394-共役勾配法)  
　3.9.5 [共役勾配法の収束判定条件](./03.md#395-共役勾配法の収束判定条件)  
　3.9.6 [共役勾配法と条件数](./03.md#396-共役勾配法と条件数)  
　3.9.7 [共役勾配法の手順](./03.md#397-共役勾配法の手順)  
　3.9.8 [リスタート](./03.md#398-リスタート)  
　3.9.9 [非対称行列の共役勾配法](./03.md#399-非対称行列の共役勾配法)  
　3.9.10 [前処理つき共役勾配法](./03.md#3910-前処理つき共役勾配法)  
　3.9.11 [ICCG法](./03.md#3911-iccg-法)  
　3.9.12 [非対称行列の解法](./03.md#3912-非対称行列の解法)  
3.10 [第3章の問題](./03.md#310-第3章の問題)  

## [第4章 行列の固有値問題](./04.md)

4.1 固有値と固有ベクトル  
　4.1.1 [固有値と固有ベクトル](./04.md#411-固有値と固有ベクトル)  
　4.1.2 [相似変換と固有値・固有ベクトル](./04.md#412-相似変換と固有値固有ベクトル)  
　4.1.3 [三角行列への相似変換](./04.md#413-三角行列への相似変換)  
　4.1.4 [対角化可能な行列](./04.md#414-対角化可能な行列)  
　4.1.5 [ジョルダンの標準形](./04.md#415-ジョルダンの標準形)  
　4.1.6 [固有値問題の数値解法](./04.md#416-固有値問題の数値解法)  
4.2 簡単な行列の固有値計算  
　4.2.1 [対角行列・三角行列の行列式](./04.md#421-対角行列三角行列の行列式)  
　4.2.2 [三重対角行列の行列式](./04.md#422-三重対角行列の行列式)  
　4.2.3 [スツルムの定理](./04.md#423-スツルムの定理)  
　4.2.4 [三重対角実対称行列の固有値](./04.md#424-三重対角実対称行列の固有値)  
　4.2.5 [ヘッセンベルグ行列の行列式](./04.md#425-ヘッセンベルグ行列の行列式)  
　4.2.6 [DKA法による固有値の計算](./04.md#426-dka-法による固有値の計算)  
4.3 ヤコビ法  
　4.3.1 [実対称行列の対角化](./04.md#431-実対称行列の対角化)  
　4.3.2 [対称行列の固有値・固有ベクトル](./04.md#432-対称行列の固有値固有ベクトル)  
　4.3.3 [ヤコビ法の利点と欠点](./04.md#433-ヤコビ法の利点と欠点)  
4.4 ギブンス法  
　4.4.1 [ギブンス法](./04.md#441-ギブンス法)  
4.5 ハウスホルダー変換  
　4.5.1 [鏡映変換](./04.md#451-鏡映変換)  
　4.5.2 [ハウスホルダー変換](./04.md#452-ハウスホルダー変換)  
　4.5.3 [非対称行列のヘッセンベルグ行列化](./04.md#453-非対称行列のヘッセンベルグ行列化)  
4.6 ランチョス法  
　4.6.1 [実対称行列の3重対角化](./04.md#461-実対称行列の3重対角化)  
　4.6.2 [非対称行列の3重対角化](./04.md#462-非対称行列の3重対角化)  
4.7 固有ベクトルの計算  
　4.7.1 [絶対値最大の固有値と固有ベクトル](./04.md#471-絶対値最大の固有値と固有ベクトル)  
　4.7.2 [絶対値最小の固有値と固有ベクトル](./04.md#472-絶対値最小の固有値と固有ベクトル)  
　4.7.3 [三重対角行列の固有ベクトル](./04.md#473-三重対角行列の固有ベクトル)  
　4.7.4 [ヘッセンベルグ行列の固有ベクトル](./04.md#474-ヘッセンベルグ行列の固有ベクトル)  
　4.7.5 [一般の固有ベクトル](./04.md#475-一般の固有ベクトル)  
4.8 QR法とダブルQR法  
　4.8.1 [QR分解とQR法](./04.md#481-textqr-分解と-textqr-法)  
　4.8.2 [QR法の収束性](./04.md#482-textqr-法の収束性)  
　4.8.3 [ヘッセンベルグ行列のQR分解](./04.md#483-ヘッセンベルグ行列の-textqr-分解)  
　4.8.4 [原点移動による収束の加速](./04.md#484-原点移動による収束の加速)  
　4.8.5 [QR法の手順](./04.md#485-textqr-法の手順)  
　4.8.6 [ダブルQR法](./04.md#486-ダブル-textqr-法)  
　4.8.7 [ダブルQR法の収束性](./04.md#487-ダブル-textqr-法の収束性)  
　4.8.8 [ダブルQR法の原点移動量](./04.md#488-ダブル-textqr-法の原点移動量)  
　4.8.9 [ダブルQR法の手順](./04.md#489-ダブル-textqr-法の手順)  
4.9 [第4章の問題](./04.md#49-第4章の問題)  

## [第5章 数値積分](./05.md)

5.1 数値積分の公式  
　5.1.1 [数値積分の公式](./05.md#511-数値積分の公式)  
　5.1.2 [台形公式](./05.md#512-台形公式)  
　5.1.3 [シンプソンの公式](./05.md#513-シンプソンの公式)  
　5.1.4 [中点公式](./05.md#514-中点公式)  
5.2 補間多項式  
　5.2.1 [ラグランジュの補間多項式](./05.md#521-ラグランジュの補間多項式)  
　5.2.2 [差分商](./05.md#522-差分商)  
　5.2.3 [前進差分](./05.md#523-前進差分)  
　5.2.4 [差分商の拡張](./05.md#524-差分商の拡張)  
　5.2.5 [ニュートンの補間公式](./05.md#525-ニュートンの補間公式)  
　5.2.6 [補間多項式の誤差](./05.md#526-補間多項式の誤差)  
　5.2.7 [エルミートの補間公式](./05.md#527-エルミート-の補間公式)  
5.3 ニュートン・コーツの公式  
　5.3.1 [ニュートン・コーツの閉型公式](./05.md#531-ニュートン・コーツの閉型公式)  
　5.3.2 [ニュートン・コーツの開型公式](./05.md#532-ニュートン・コーツの開型公式)  
5.4 ロンバーグの積分法  
　5.4.1 [ロンバーグの積分法](./05.md#541-ロンバーグの積分法)  
　5.4.2 [ロンバーグ積分法の手順](./05.md#542-ロンバーグ積分法の手順)  
5.5 ガウス型積分公式  
　5.5.1 [ガウス型積分公式](./05.md#551-ガウス型積分公式)  
　5.5.2 [直交多項式](./05.md#552-直交多項式)  
　5.5.3 [ガウスの積分公式](./05.md#553-ガウスの積分公式)  
　5.5.4 [ガウスの積分公式の打切り誤差](./05.md#554-ガウスの積分公式の打切り誤差)  
　5.5.5 [ガウスの積分公式の分点と重み](./05.md#555-ガウスの積分公式の分点と重み)  
　5.5.6 [ガウス型積分公式の重み](./05.md#556-ガウス型積分公式の重み)  
　5.5.7 [ガウス型積分公式の打切り誤差](./05.md#557-ガウス型積分公式の打切り誤差)  
5.6 2重指数関数型公式  
　5.6.1 [DE公式](./05.md#561-de-公式)  
　5.6.2 [DE公式の収束性](./05.md#562-de-公式の収束性)  
　5.6.3 [特異関数の数値積分](./05.md#563-特異関数の数値積分)  
5.7 [第5章の問題](./05.md#57-第5章の問題)  

## 第6章 常微分方程式

6.1 常微分方程式  
　6.1.1 常微分方程式  
　6.1.2 初期条件  
　6.1.3 偏微分方程式  
　6.1.4 常微分方程式の数値解法  
6.2 オイラー法，テーラー展開法  
　6.2.1 オイラー法  
　6.2.2 テーラー展開法  
6.3 ルンゲ・クッタ型公式  
　6.3.1 ルンゲ・クッタ型公式  
　6.3.2 公式の適合条件  
　6.3.3 改良オイラー法  
　6.3.4 2段ルンゲ・クッタ型公式  
　6.3.5 3段ルンゲ・クッタ型公式  
　6.3.6 ルンゲ・クッタの公式  
　6.3.7 ルンゲ・クッタ・ジルの公式  
　6.3.8 丸めの誤差の補正  
　6.3.9 連立1階常微分方程式  
　6.3.10 最高到達次数  
　6.3.11 誤差の事前推定と事後推定  
　6.3.12 フェールバーグの公式  
　6.3.13 初期ステップ幅と出力間隔  
　6.3.14 キャッシュ・カープの公式  
6.4 線形多段階法  
　6.4.1 線形多段階法  
　6.4.2 線形多段階法の適合条件  
　6.4.3 中点公式  
　6.4.4 線形多段階法の公式  
　6.4.5 線形多段階法の陽公式  
　6.4.6 アダ ムス・バッシュフォースの公式  
　6.4.7 可変ステップ幅陽公式  
　6.4.8 可変ステップ幅陰公式  
　6.4.9 アダ ムス・ムルトンの公式  
　6.4.10 予測子修正子法  
6.5 公式の安定性  
　6.5.1 中点公式の不安定性  
　6.5.2 線形安定性  
　6.5.3 ルンゲ・クッタ型公式の線形安定性  
　6.5.4 線形多段階法の線形安定性  
　6.5.5 硬い微分方程式  
6.6 グラッグ法（補外法）  
　6.6.1 中点公式の打切り誤差  
　6.6.2 グラッグ法の手順  
6.7 第6章の問題  

## 第7章 高速フーリエ変換

7.1 サンデ・チューキー法  
　7.1.1 離散化フーリエ変換  
　7.1.2 高速フーリエ変換  
　7.1.3 サンデ・チューキー法  
　7.1.4 ビット反転  
　7.1.5 逆離散化フーリエ変換  
7.2 クーリー・チューキー法  
　7.2.1 クーリー・チューキー法  
7.3 実数データのFFT  
　7.3.1 実数データのFFT  
　7.3.2 実数データへのIFFT  
7.4 基数rの FFT  
　7.4.1 基数rの FFT  
　7.4.2 基数rのビット  
7.5 複数基数のFFT  
　7.5.1 複数基数のFFT  
7.6 ウィンドウ  
　7.6.1 ウィンドウ関数  
7.7 第7章の問題  

## 第8章 スプライン関数

8.1 スプライン関数  
　8.1.1 スプライン関数  
　8.1.2 切断べき関数  
　8.1.3 $m$次スプライン  
　8.1.4 $C$スプライン  
　8.1.5 自然スプライン  
　8.1.6 滑らかな補間  
8.2 $B$スプライン  
　8.2.1 $B$スプライン  
　8.2.2 差分商による$B$スプラインの表現  
　8.2.3 基底としての$B$スプライン  
　8.2.4 ドブア・コックスの漸化式  
　8.2.5 $N$スプライン  
　8.2.6 スプラインの導関数  
　8.2.7 $N$スプライン補間  
8.3 拡張スプライン  
　8.3.1 多重節点のスプライン  
　8.3.2 多重節点のドブア・コックスの漸化式  
8.4 スプライン補間  
　8.4.1 シェーンバーグ・ホイットニの条件  
　8.4.2 奇数次スプライン補間  
　8.4.3 奇数次周期スプライン  
　8.4.4 パラメトリック・スプライン  
　8.4.5 リーゼンフェルト・スプライン  
　8.4.6 スプライン補間の応用  
8.5 第8章の問題  

## 付 録 A 浮動小数点数の表現

## 付 録 B プログラム

B.1 目次  
B.2 プログラムの例  
