.class public final Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;
.super Ljava/lang/Object;
.source "AggregateRequestImpl.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/samsung/android/sdk/healthdata/c;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$Group;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;

.field private final f:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/String;

.field private final i:J

.field private final j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/a;

    invoke-direct {v0}, Lcom/samsung/android/sdk/internal/healthdata/a;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->a:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->b:Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->c:Ljava/util/List;

    .line 64
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$Group;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->d:Ljava/util/List;

    .line 65
    const-class v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->e:Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;

    .line 66
    const-class v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->f:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->g:Ljava/util/List;

    .line 68
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->g:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->h:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->i:J

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->j:J

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;Ljava/util/List;Ljava/lang/String;JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$Group;",
            ">;",
            "Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JJ)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->a:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->b:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->c:Ljava/util/List;

    .line 51
    iput-object p4, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->d:Ljava/util/List;

    .line 52
    iput-object p5, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->e:Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;

    .line 53
    iput-object p6, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->f:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    .line 54
    iput-object p7, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->g:Ljava/util/List;

    .line 55
    iput-object p8, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->h:Ljava/lang/String;

    .line 56
    iput-wide p9, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->i:J

    .line 57
    iput-wide p11, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->j:J

    .line 58
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public final getAggregatePair()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$AggregatePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->c:Ljava/util/List;

    return-object v0
.end method

.method public final getDataType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceUuids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->g:Ljava/util/List;

    return-object v0
.end method

.method public final getEndTime()J
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->j:J

    return-wide v0
.end method

.method public final getFilter()Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->f:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    return-object v0
.end method

.method public final getGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->d:Ljava/util/List;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartTime()J
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->i:J

    return-wide v0
.end method

.method public final getTimeGroup()Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->e:Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->f:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->d:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->e:Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl$TimeGroup;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->f:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->g:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->i:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 90
    iget-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->j:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 91
    return-void
.end method
