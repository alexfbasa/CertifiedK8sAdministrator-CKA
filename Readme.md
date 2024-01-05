# Certified Kubernetes Administrator (CKA) Certification Guide

Welcome to the Certified Kubernetes Administrator (CKA) certification guide! This guide is designed to help you prepare
for the CKA exam, a hands-on assessment of your Kubernetes skills. Time management is crucial for success in this exam,
so we recommend practicing in your own environment until you can confidently perform tasks without hesitation.

## Exam Overview

- **Version:** Based on Kubernetes 1.22 (verify the latest version
  on [official example page](https://www.cncf.io/certification/cka/)).
- **Curriculum Changes:** Stay updated on changes
  through [Kubernetes release notes](https://github.com/kubernetes/kubernetes/releases).

## Exam Structure

1. **Part 1 (25%):** Kubernetes Cluster Architecture, Installation, and Configurations.
2. **Part 2 (45%):**
    - Chapter 4 (15%): Workloads and Scheduling.
    - Chapter 5 (10%): Storage Services and Networking.
    - Chapters 6 and 7 (20%): Services and Networking.
3. **Part 3 (30%):** Chapters 8 to 10 cover Troubleshooting.

## Key Concepts

- Deep understanding of Kubernetes security, including security context and role-based access control (RBAC).
- Some Kubernetes security content has shifted to the Certified Kubernetes Security Specialist (CKS) exam.

## Exam Day Preparation

- Ensure your system
  meets [exam provider's requirements](https://docs.linuxfoundation.org/tc-docs/certification/faq-cka-ckad-cks#what-are-the-system-requirements-to-take-the-exam).
- Webcam and microphone are mandatory during the exam.
- Use a single instance of a Chromium-based browser.
- Run the [compatibility check tool](https://www.examslocal.com/ScheduleExam/Home/CompatibilityCheck).
- Familiarize yourself with the [exam environment](https://psi.wistia.com/medias/5kidxdd0ry).

## Exam Details

- Duration: Approximately 2 hours.
- Open-book: Access [official Kubernetes documentation](https://kubernetes.io) during the exam.
- Consists of around 20 scenario-based tasks.
- Exam results delivered within 24 to 36 hours; passing score is 66%.

## Tips and Tricks

- Practice with the official exam simulator at [killer.sh](https://killer.sh/course/).
- Review [CKA exam instructions and tricks](https://docs.linuxfoundation.org/tc-docs/certification/tips-cka-and-ckad).
- Excellent time management and consistent practice are key to success.
- Be careful with the security context;
    - Suggest you perform a context check before working on any new questions;
    - Check out the context:
  ```bash
    kubectl config current-context
  ```
    - If you want to go to a specific Kubernetes cluster:
  ```bash
    kubectl config use-context my-current-cluster-name
  ```
    - You can also check out a list of Kubernetes clusters you’ve worked o:
  ```bash
    kubectl config get-contexts
  ```

- Setting up a kubectl alias to save time
    - Check [kubectl-aliases repository on GitHub](https://github.com/ahmetb/kubectl-aliases) out.
- Use shortcuts;
    - Check [playbook repository](https://github.com/cloudmelon/melonkube/blob/master/00%20-%20Shortcuts.md) which
      covers all the shortcuts for Kubernetes objects.

- Setting Up kubectl Autocomplete

To streamline your Kubernetes workflow and enhance efficiency during the CKA exam, consider setting up autocompletion
for kubectl commands in your shell. Follow these steps:

1. Install bash-completion package if not already installed:

```bash
sudo apt-get install bash-completion  # For Debian-based systems
sudo yum install bash-completion      # For Red Hat-based systems
```

2. Enable autocompletion for the current shell session:

```bash
source <(kubectl completion bash)
```

3. Permanently add autocompletion to your bash shell by appending the following line to your `~/.bashrc` file:

```bash
echo "source <(kubectl completion bash)" >> ~/.bashrc
```

4. Create a shortcut for kubectl commands by adding the following lines to your `~/.bashrc` file:

```bash
alias k=kubectl
complete -F __start_kubectl k
```

Utilizing this setup, you can now use the 'k' alias instead of typing 'kubectl' and benefit from autocompletion.

### Tips for Efficient Exam Preparation

While preparing for the CKA exam, consider the following tips to enhance your efficiency:

## 1. Command Autocompletion

Although relying on bash autocompletion may take some time initially, prioritize building a robust understanding of
Kubernetes commands through regular practice. This approach ensures quicker skill development.

## 2. Bookmark Important Documentation

Familiarize yourself with key Kubernetes documentation sources to swiftly locate necessary information during the exam.
Bookmark the following domains in your browser:

- [Kubernetes official documentation](https://kubernetes.io/docs/)
- [Kubernetes blog](https://kubernetes.io/blog/)
- [Kubernetes GitHub repository](https://github.com/kubernetes/)

For quick reference, bookmark the [kubectl cheat sheet](https://kubernetes.io/docs/reference/kubectl/cheatsheet/) and
use the [official documentation search](https://kubernetes.io/search/?q=kubecon).

## Certification and Beyond

- Pass with a score of at least 66%.
- Receive certification in PDF format with a validity of 3 years.
- Badge awarded shortly after certification.
- For inquiries, email certificationsupport@cncf.io.

## Final Advice

Before focusing solely on certification preparation, ensure a deep understanding of Kubernetes cluster architecture and
ecosystem. This foundational knowledge will strengthen your grasp of exam-related content. Good luck on your CKA
journey!