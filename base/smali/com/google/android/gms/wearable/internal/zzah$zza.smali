.class public Lcom/google/android/gms/wearable/internal/zzah$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/wearable/DataApi$DataItemResult;


# instance fields
.field private final zzair:Lcom/google/android/gms/common/api/Status;

.field private final zzbUo:Lcom/google/android/gms/wearable/DataItem;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/DataItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzah$zza;->zzair:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzah$zza;->zzbUo:Lcom/google/android/gms/wearable/DataItem;

    return-void
.end method


# virtual methods
.method public getDataItem()Lcom/google/android/gms/wearable/DataItem;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzah$zza;->zzbUo:Lcom/google/android/gms/wearable/DataItem;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzah$zza;->zzair:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
