#!/bin/sh
## 引数
# 第一引数に「--ms」としていすると確認メッセージを出力しないで上書きします
#
SKIP="o"$1
DIR=$(cd $(dirname $0); pwd)
echo $DIR
for var in ".bashrc" ".zshrc"  ".vimrc" ".vim" ".tmux.conf" ".gitconfig"
do
	FILE_NAME=${DIR}/${var}
	if [ ${SKIP} = "o--ms" ]; then
		ln -s ${FILE_NAME} ~/${var}
	elif [ -e ~/${var} ] || [ -d ~/${var} ]; then
		# 入力確認
		echo "「~/${var}」は存在します。上書きしますか？ (y/n): "
		read yn
		if [ ${yn} = "Y" ] || [ ${yn} = "y" ]; then
			rm -rf ~/${var}
			ln -s ${FILE_NAME} ~/${var}
		fi
	elif [ ! -L ~/${var} ]; then
		echo "「~/${var}」を設置しました。\n"
		ln -s ${FILE_NAME} ~/${var}
	fi
done
