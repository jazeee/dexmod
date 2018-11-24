.class Landroid/support/design/widget/TabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mCustomIconView:Landroid/widget/ImageView;

.field private mCustomTextView:Landroid/widget/TextView;

.field private mCustomView:Landroid/view/View;

.field private mDefaultMaxLines:I

.field private mIconView:Landroid/widget/ImageView;

.field private final mTab:Landroid/support/design/widget/TabLayout$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 4

    .prologue
    .line 1175
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    .line 1176
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1173
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    .line 1177
    iput-object p3, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 1178
    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->access$200(Landroid/support/design/widget/TabLayout;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1179
    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->access$200(Landroid/support/design/widget/TabLayout;)I

    move-result v0

    invoke-static {p2, v0}, Landroid/support/v7/internal/widget/TintManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1181
    :cond_0
    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->access$300(Landroid/support/design/widget/TabLayout;)I

    move-result v0

    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->access$400(Landroid/support/design/widget/TabLayout;)I

    move-result v1

    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->access$500(Landroid/support/design/widget/TabLayout;)I

    move-result v2

    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->access$600(Landroid/support/design/widget/TabLayout;)I

    move-result v3

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 1183
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setGravity(I)V

    .line 1184
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setOrientation(I)V

    .line 1185
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->update()V

    .line 1186
    return-void
.end method

.method private approximateLineWidth(Landroid/text/Layout;IF)F
    .locals 2

    .prologue
    .line 1418
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    div-float v1, p3, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private updateTextAndIcon(Landroid/support/design/widget/TabLayout$Tab;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 1341
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1342
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1344
    if-eqz p3, :cond_0

    .line 1345
    if-eqz v0, :cond_3

    .line 1346
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1347
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1348
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$TabView;->setVisibility(I)V

    .line 1353
    :goto_0
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1356
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    move v3, v0

    .line 1357
    :goto_1
    if-eqz p2, :cond_1

    .line 1358
    if-eqz v3, :cond_5

    .line 1359
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1360
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1361
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1362
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$TabView;->setVisibility(I)V

    .line 1369
    :cond_1
    :goto_2
    if-eqz p3, :cond_2

    .line 1370
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1372
    if-eqz v3, :cond_7

    invoke-virtual {p3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    .line 1374
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v1, v4}, Landroid/support/design/widget/TabLayout;->access$1400(Landroid/support/design/widget/TabLayout;I)I

    move-result v1

    .line 1376
    :goto_3
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v1, v4, :cond_2

    .line 1377
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1378
    invoke-virtual {p3}, Landroid/widget/ImageView;->requestLayout()V

    .line 1382
    :cond_2
    if-nez v3, :cond_6

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1383
    invoke-virtual {p0, p0}, Landroid/support/design/widget/TabLayout$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1388
    :goto_4
    return-void

    .line 1350
    :cond_3
    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1351
    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    move v3, v2

    .line 1356
    goto :goto_1

    .line 1364
    :cond_5
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1365
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1385
    :cond_6
    invoke-virtual {p0, v5}, Landroid/support/design/widget/TabLayout$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1386
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$TabView;->setLongClickable(Z)V

    goto :goto_4

    :cond_7
    move v1, v2

    goto :goto_3
.end method


# virtual methods
.method public getTab()Landroid/support/design/widget/TabLayout$Tab;
    .locals 1

    .prologue
    .line 1411
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1207
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1209
    const-class v0, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1210
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1215
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1217
    const-class v0, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1218
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1392
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1393
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->getLocationOnScreen([I)V

    .line 1395
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1396
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getWidth()I

    move-result v2

    .line 1397
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getHeight()I

    move-result v3

    .line 1398
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1400
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1403
    const/16 v5, 0x31

    aget v0, v0, v6

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    div-int/lit8 v2, v4, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v5, v0, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 1406
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1407
    const/4 v0, 0x1

    return v0
.end method

.method public onMeasure(II)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 1222
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1223
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v2}, Landroid/support/design/widget/TabLayout;->access$700(Landroid/support/design/widget/TabLayout;)I

    move-result v2

    .line 1224
    if-lez v2, :cond_6

    if-eqz v0, :cond_0

    if-le v0, v2, :cond_6

    .line 1227
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->access$800(Landroid/support/design/widget/TabLayout;)I

    move-result v0

    const/high16 v2, -0x80000000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1235
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 1236
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getResources()Landroid/content/res/Resources;

    .line 1237
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->access$900(Landroid/support/design/widget/TabLayout;)F

    move-result v2

    .line 1238
    iget v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    .line 1240
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7

    move v0, v1

    .line 1248
    :cond_1
    :goto_1
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    .line 1249
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineCount()I

    move-result v5

    .line 1250
    iget-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v6

    .line 1252
    cmpl-float v7, v2, v4

    if-nez v7, :cond_2

    if-ltz v6, :cond_5

    if-eq v0, v6, :cond_5

    .line 1256
    :cond_2
    iget-object v6, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v6}, Landroid/support/design/widget/TabLayout;->access$1100(Landroid/support/design/widget/TabLayout;)I

    move-result v6

    if-ne v6, v1, :cond_4

    cmpl-float v4, v2, v4

    if-lez v4, :cond_4

    if-ne v5, v1, :cond_4

    .line 1261
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 1262
    if-eqz v4, :cond_3

    invoke-direct {p0, v4, v3, v2}, Landroid/support/design/widget/TabLayout$TabView;->approximateLineWidth(Landroid/text/Layout;IF)F

    move-result v5

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v5, v4

    if-lez v4, :cond_4

    :cond_3
    move v1, v3

    .line 1268
    :cond_4
    if-eqz v1, :cond_5

    .line 1269
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1270
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1271
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1275
    :cond_5
    return-void

    .line 1231
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0

    .line 1243
    :cond_7
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    if-le v4, v1, :cond_1

    .line 1245
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v2}, Landroid/support/design/widget/TabLayout;->access$1000(Landroid/support/design/widget/TabLayout;)F

    move-result v2

    goto :goto_1
.end method

.method public setSelected(Z)V
    .locals 1

    .prologue
    .line 1190
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_2

    const/4 v0, 0x1

    .line 1191
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 1192
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1193
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->sendAccessibilityEvent(I)V

    .line 1195
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1198
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1199
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1202
    :cond_1
    return-void

    .line 1190
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final update()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1278
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 1279
    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 1280
    if-eqz v2, :cond_9

    .line 1281
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1282
    if-eq v0, p0, :cond_1

    .line 1283
    if-eqz v0, :cond_0

    .line 1284
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1286
    :cond_0
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;)V

    .line 1288
    :cond_1
    iput-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    .line 1289
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1290
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1292
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 1293
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1294
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1297
    :cond_3
    const v0, 0x1020014

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    .line 1298
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 1299
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    .line 1301
    :cond_4
    const v0, 0x1020006

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    .line 1312
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_b

    .line 1314
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    .line 1315
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Landroid/support/design/R$layout;->design_layout_tab_icon:I

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1317
    invoke-virtual {p0, v0, v4}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;I)V

    .line 1318
    iput-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    .line 1320
    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_6

    .line 1321
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Landroid/support/design/R$layout;->design_layout_tab_text:I

    invoke-virtual {v0, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1323
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;)V

    .line 1324
    iput-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    .line 1325
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    .line 1327
    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v3}, Landroid/support/design/widget/TabLayout;->access$1200(Landroid/support/design/widget/TabLayout;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1328
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->access$1300(Landroid/support/design/widget/TabLayout;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1329
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v2}, Landroid/support/design/widget/TabLayout;->access$1300(Landroid/support/design/widget/TabLayout;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1331
    :cond_7
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0, v2}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/support/design/widget/TabLayout$Tab;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 1338
    :cond_8
    :goto_1
    return-void

    .line 1304
    :cond_9
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 1305
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->removeView(Landroid/view/View;)V

    .line 1306
    iput-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    .line 1308
    :cond_a
    iput-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    .line 1309
    iput-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    goto :goto_0

    .line 1334
    :cond_b
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 1335
    :cond_c
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0, v2}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/support/design/widget/TabLayout$Tab;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_1
.end method
