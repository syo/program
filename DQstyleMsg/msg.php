<?php
	define('DEFAULT_SIZE',40);
	define('DEFAULT_FONT','GD-DOTFONT-DQ-TTF_008.ttf');
	define('DEFAULT_VALUE','');
	define('DEFAULT_COLOR','ffffff');

	//フォントサイズ
	$font_size = DEFAULT_SIZE;
	if (isset($_GET['size'])) {
		$font_size = intval($_GET['size']);
	  if ($font_size < 8 ) $font_size = 8;
		else if ($font_size > 240) $font_size = 240;
	}
	
	//TTFフォントのパス
	$font_face = DEFAULT_FONT;
	if (isset($_GET['font'])) {
		$font_face = $_GET['font'];
	}
	$font_path = "./".$font_face;
	
	//組み込みテキスト
	$org_value = DEFAULT_VALUE;
	if (isset($_GET['value'])) {
		$org_value = $_GET['value'];
	  $org_value = rawurldecode($org_value);
	  if (empty($org_value)) $org_value = DEFAULT_VALUE;
	}
	
	//テキストカラー
	$rgb_color = DEFAULT_COLOR;
	if (isset($_GET['color'])) {
		$rgb_color = $_GET['color'];
	}
	$font_color = intval($rgb_color, 16);
	//最初の文字のX座標のベースポイント
	$tx = 2;
	
	//フォントペースラインの位置
	$ty = $font_size * 1.30;
	
	// 大きさを測定
	$bbox = imagettfbbox($font_size, 0, $font_path, $org_value);
	
	//左上
	$x0 = $bbox[6];
	$y0 = $bbox[7];
	
	//右下
	$x1 = $bbox[2];
	$y1 = $bbox[3];
	
	//幅と高さを取得
	//$width = $x1 - $x0 + $font_size * 0.35 + 4;
	//$height = $y1 - $y0 + $font_size * 0.3;
	//$height = $font_size * 1.5 + 2;

	$width = 650;
	$height = 300;

	//イメージ描画枠作成
	$im = imagecreatetruecolor($width, $height);
	
	//背景色
	//$background_color = imagecolorallocatealpha($im, 255, 255, 255, 127);
	$background_color = imagecolorallocatealpha($im, 0, 0, 0, 0);
	imagealphablending($im, true); // ブレンドモードを設定する
	imagesavealpha($im, true); // 完全なアルファチャネルを保存する
	imagefill($im, 0, 0, $background_color);
	
	//テキスト描画
	imagefttext($im, $font_size, 0, $tx, $ty, $font_color, $font_path, "おおゆうしゃよ\n".$org_value."とはなさけない");
	
	//PNG形式で標準出力へ
	header("Content-type: image/png");
	header("Content-type: image/jpeg");
	imagepng($im);

	//イメージ破棄(メモリ開放)
	imagedestroy($im);
?>

