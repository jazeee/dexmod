.class public final Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;
.super Ljava/lang/Object;
.source "ReadRequestImpl.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/samsung/android/sdk/healthdata/c;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:I

.field private g:I

.field private h:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:B

.field private l:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/v;

    invoke-direct {v0}, Lcom/samsung/android/sdk/internal/healthdata/v;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->i:Ljava/util/List;

    .line 45
    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->j:Ljava/util/List;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->a:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->b:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->c:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->d:J

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->e:J

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->f:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->g:I

    .line 78
    const-class v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->h:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    .line 79
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->i:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->j:Ljava/util/List;

    .line 81
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->j:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->k:B

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->l:J

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->i:Ljava/util/List;

    .line 45
    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->j:Ljava/util/List;

    .line 50
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->a:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;Ljava/util/List;Ljava/util/List;BLjava/lang/String;JJIIJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;B",
            "Ljava/lang/String;",
            "JJIIJ)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->i:Ljava/util/List;

    .line 45
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->j:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->a:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->c:Ljava/lang/String;

    .line 58
    iput-object p7, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->b:Ljava/lang/String;

    .line 59
    iput-wide p8, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->d:J

    .line 60
    iput-wide p10, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->e:J

    .line 61
    move/from16 v0, p12

    iput v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->f:I

    .line 62
    move/from16 v0, p13

    iput v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->g:I

    .line 63
    iput-object p3, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->h:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    .line 64
    iput-object p4, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->i:Ljava/util/List;

    .line 65
    iput-object p5, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->j:Ljava/util/List;

    .line 66
    iput-byte p6, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->k:B

    .line 67
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->l:J

    .line 68
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public final getCount()J
    .locals 2

    .prologue
    .line 169
    iget v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->g:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getDataType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->a:Ljava/lang/String;

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
    .line 197
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->j:Ljava/util/List;

    return-object v0
.end method

.method public final getEndTime()J
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->e:J

    return-wide v0
.end method

.method public final getFilter()Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->h:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    return-object v0
.end method

.method public final getOffset()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->f:I

    return v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getProjections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl$Projection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->i:Ljava/util/List;

    return-object v0
.end method

.method public final getSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartTime()J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->d:J

    return-wide v0
.end method

.method public final getTimeAfter()J
    .locals 2

    .prologue
    .line 211
    iget-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->l:J

    return-wide v0
.end method

.method public final isAliasOnly()B
    .locals 1

    .prologue
    .line 204
    iget-byte v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->k:B

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->h:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

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
    .line 93
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    iget-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 98
    iget v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->h:Lcom/samsung/android/sdk/healthdata/HealthDataResolver$Filter;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 101
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->i:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->j:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 103
    iget-byte v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->k:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 104
    iget-wide v0, p0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->l:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 105
    return-void
.end method
