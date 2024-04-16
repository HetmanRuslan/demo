# Proof of Concept (PoC) для ArgoCD

## Огляд

У цьому документі ми представимо Proof of Concept (PoC) для розгортання та налаштування ArgoCD на кластері Kubernetes.

## Кроки

1. **Розгортання Kubernetes кластера:** 
   - Використайте інструмент, такий як `minikube` або `kind`, для розгортання локального кластера Kubernetes.

2. **Встановлення ArgoCD за допомогою Helm:**
   ```bash
   helm install argocd argo/argo-cd

Перевірка розгортання компонентів ArgoCD:

bash
Copy code
kubectl get pods -n default
Отримання External IP для ArgoCD сервера:

bash
Copy code
kubectl get svc -n default argocd-server -o wide
Доступ до веб-інтерфейсу ArgoCD:

Відкрийте браузер та перейдіть за посиланням http://<External_IP> і використайте логін admin та згенерований пароль для входу.

Демонстрація
<script src="https://cdn.jsdelivr.net/npm/asciinema-player@2.11.2/dist/asciinema-player.min.js"></script>
<asciinema-player src="demo1.cast"></asciinema-player>
