.class public final Lcom/flurry/sdk/gz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/e;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/flurry/sdk/gz;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/flurry/sdk/gz;->a:Ljava/lang/String;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/gz;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/flurry/sdk/gz;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/gz;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/flurry/sdk/gz;->a:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/flurry/sdk/gz;->a:Ljava/lang/String;

    return-object v0
.end method
