.class Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$1;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic zzsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$1;->zzsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/identifier/zza;

    invoke-direct {v0}, Lcom/google/android/gms/ads/identifier/zza;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$1;->zzsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/identifier/zza;->zzu(Ljava/lang/String;)V

    return-void
.end method
