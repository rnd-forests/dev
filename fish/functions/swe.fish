# Based on the shell we are using, we will modify either ~/.bashrc or ~/.zshrc file.
# If you don’t have idea about this, just go for the ~/.bashrc file.
# Change environment gcloud in Be
function swe
    set -l environment $argv[1]

    if test -z $environment
        echo "Please provide the environment."
        return 1
    end

    switch $environment
        case "dev"
            gcloud config set project gam-project-cgd-x0l-zm4
            gcloud container clusters get-credentials bu1-k8s-dev --zone=asia-southeast1-a
        case "jugnoo"
            gcloud config set project gam-project-cgd-x0l-zm4
            gcloud container clusters get-credentials jugnoo --zone=asia-southeast1-a
        case "qa"
            gcloud config set project veep-staging
            gcloud container clusters get-credentials qa --zone=asia-southeast1-a
        case "stage"
            gcloud config set project veep-staging
            gcloud container clusters get-credentials default --zone=asia-southeast1-a
        case "prod"
            gcloud config set project veep-production
            gcloud container clusters get-credentials default --zone=asia-southeast1-a
        case "*"
            echo "Unknown environment provided."
    end
end
