aws cloudformation create-stack \
    --stack-name ${APPNAME}-pipeline-stack \
    --template-body file://pipeline_template.yml \
    --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM \
    --parameters \
    ParameterKey=OAuthToken,ParameterValue="${GITHUB_ACCESS_TOKEN}" \  # GitHubのDeveloper settingsから発行したアクセストークン
    ParameterKey=Branch,ParameterValue="${BRANCH}" \  # デプロイのトリガーとなるブランチ名
    ParameterKey=Owner,ParameterValue="${OWNER}" \  # リポジトリのオーナー名
    ParameterKey=Repo,ParameterValue="${REPO}" \  # リポジトリ名
    ParameterKey=AppName,ParameterValue="${APPNAME}"  # アプリケーション名
