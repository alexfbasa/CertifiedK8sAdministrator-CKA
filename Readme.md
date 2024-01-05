# Certified Kubernetes Administrator (CKA) Certification Guide

Welcome to the Certified Kubernetes Administrator (CKA) certification guide! This comprehensive resource is designed to
assist you in your preparation for the CKA exam, a hands-on assessment of your Kubernetes skills. Successful completion
of this certification will validate your ability to efficiently manage Kubernetes clusters.

## Exam Overview

- **Version:** Based on Kubernetes 1.22 (verify the latest version on
  the [official CNCF page](https://www.cncf.io/certification/cka/)).
- **Curriculum Changes:** Stay informed about updates
  through [Kubernetes release notes](https://github.com/kubernetes/kubernetes/releases).

## Exam Structure

1. **Part 1 (25%):** Kubernetes Cluster Architecture, Installation, and Configurations.
2. **Part 2 (45%):**
    - Chapter 4 (15%): Workloads and Scheduling.
    - Chapter 5 (10%): Storage Services and Networking.
    - Chapters 6 and 7 (20%): Services and Networking.
3. **Part 3 (30%):** Chapters 8 to 10 cover Troubleshooting.

## Key Concepts

- A profound understanding of Kubernetes security, including security context and role-based access control (RBAC).
- Note: Some Kubernetes security content has shifted to the Certified Kubernetes Security Specialist (CKS) exam.

## Exam Day Preparation

- Ensure your system meets
  the [exam provider's requirements](https://docs.linuxfoundation.org/tc-docs/certification/faq-cka-ckad-cks#what-are-the-system-requirements-to-take-the-exam).
- A webcam and microphone are mandatory during the exam.
- Use a single instance of a Chromium-based browser.
- Run the [compatibility check tool](https://www.examslocal.com/ScheduleExam/Home/CompatibilityCheck).
- Familiarize yourself with the [exam environment](https://psi.wistia.com/medias/5kidxdd0ry).

## Exam Details

- Duration: Approximately 2 hours.
- Open-book: Access [official Kubernetes documentation](https://kubernetes.io) during the exam.
- Consists of around 20 scenario-based tasks.
- Exam results delivered within 24 to 36 hours; passing score is 66%.

## Tips and Tricks

### General Tips

- Practice with the official exam simulator at [killer.sh](https://killer.sh/course/).
- Review [CKA exam instructions and tricks](https://docs.linuxfoundation.org/tc-docs/certification/tips-cka-and-ckad).
- Excellent time management and consistent practice are key to success.

### Security Context Tips

- Be cautious with the security context.
- Perform a context check before tackling new questions:

  ```bash
  kubectl config current-context
  ```

- Switch to a specific Kubernetes cluster:

  ```bash
  kubectl config use-context my-current-cluster-name
  ```

- View a list of Kubernetes clusters you've worked on:

  ```bash
  kubectl config get-contexts
  ```

### Efficiency Tips

- Set up a kubectl alias to save time.
  Check [kubectl-aliases repository on GitHub](https://github.com/ahmetb/kubectl-aliases).
- Use shortcuts for Kubernetes objects.
  Check [playbook repository](https://github.com/cloudmelon/melonkube/blob/master/00%20-%20Shortcuts.md).

### kubectl Autocomplete Setup

To streamline your Kubernetes workflow during the CKA exam, consider setting up autocompletion for kubectl commands:

1. Install bash-completion:

   ```bash
   sudo apt-get install bash-completion  # For Debian-based systems
   sudo yum install bash-completion      # For Red Hat-based systems
   ```

2. Enable autocompletion for the current shell session:

   ```bash
   source <(kubectl completion bash)
   ```

3. Permanently add autocompletion to your bash shell:

   ```bash
   echo "source <(kubectl completion bash)" >> ~/.bashrc
   ```

4. Create a shortcut for kubectl commands:

   ```bash
   alias k=kubectl
   complete -F __start_kubectl k
   ```

### Tips for Efficient Exam Preparation

1. **Command Autocompletion:**
   Prioritize building a robust understanding of Kubernetes commands through regular practice. Bash autocompletion,
   though initially time-consuming, accelerates skill development.

2. **Bookmark Important Documentation:**
   Familiarize yourself with key Kubernetes documentation sources. Bookmark the following domains for quick reference:

    - [Kubernetes official documentation](https://kubernetes.io/docs/)
    - [Kubernetes blog](https://kubernetes.io/blog/)
    - [Kubernetes GitHub repository](https://github.com/kubernetes/)
    - [kubectl cheat sheet](https://kubernetes.io/docs/reference/kubectl/cheatsheet/)

## Certification and Beyond

- Pass with a score of at least 66%.
- Receive certification in PDF format with a validity of 3 years.
- Badge awarded shortly after certification.
- For inquiries, email certificationsupport@cncf.io.

## How to Set Up Your Local Lab

Choose between setting up a local lab using Minikube or provisioning a Kubernetes cluster in a Linux host (Master,
Workers) with Vagrant. Follow the instructions in [Provisioning_K8s_Lab.md](Provisioning_K8s_Vagrant) for a VM-based lab
or [Provisioning_Minikube.md](Provisioning_Minikube.md) for a Minikube-based lab.

## Final Advice

Before focusing solely on certification preparation, ensure a deep understanding of Kubernetes cluster architecture and
the ecosystem. This foundational knowledge will strengthen your grasp of exam-related content. Good luck on your CKA
journey!