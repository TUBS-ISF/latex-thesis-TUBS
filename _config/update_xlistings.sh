wget -O ./xlistings.sty https://raw.githubusercontent.com/EagleoutIce/xlistings/refs/heads/main/xlistings.sty
mkdir -p langs

# upstream ships the definitions as 'xlistings-<lang>.cfg' to keep the flat TDS
# namespace clean; the unprefixed name is only kept as a fallback for local ones
LANGUAGES=("aspectj" "bash" "cpp" "csharp" "git" "haskell" "java" "javascript" "json" "lambda_calculus" "latex" "lua" "markdown" "mips" "python" "regex" "sql" "ts" "x86" "xml" "yaml" "R")

for lang in "${LANGUAGES[@]}"; do
   wget -O "./langs/xlistings-$lang.cfg" "https://raw.githubusercontent.com/EagleoutIce/xlistings/refs/heads/main/langs/xlistings-$lang.cfg" \
      && rm -f "./langs/$lang.cfg"
done
