echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/Oamau8/stream29 /VCPlayerBot
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/Oamau8/stream29 -b $BRANCH /VCPlayerBot
fi
cd /VCPlayerBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
