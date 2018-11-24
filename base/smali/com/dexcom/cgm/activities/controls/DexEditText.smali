.class public Lcom/dexcom/cgm/activities/controls/DexEditText;
.super Landroid/widget/EditText;
.source "DexEditText.java"


# static fields
.field private static final INVALID_CHARACTERS:Ljava/lang/String; = ";:\"`\\/<>"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/controls/DexEditText;->commonInit()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/controls/DexEditText;->commonInit()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/controls/DexEditText;->commonInit()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/controls/DexEditText;->commonInit()V

    .line 43
    return-void
.end method

.method private commonInit()V
    .locals 3

    .prologue
    .line 49
    new-instance v1, Lcom/dexcom/cgm/activities/controls/DexEditText$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/controls/DexEditText$1;-><init>(Lcom/dexcom/cgm/activities/controls/DexEditText;)V

    .line 75
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/controls/DexEditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    .line 76
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/InputFilter;

    .line 77
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aput-object v1, v0, v2

    .line 78
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/controls/DexEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 79
    return-void
.end method


# virtual methods
.method public setSelection(I)V
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/controls/DexEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 91
    if-lt p1, v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method
