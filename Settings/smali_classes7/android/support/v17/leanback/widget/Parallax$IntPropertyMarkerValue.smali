.class Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;
.super Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;
.source "Parallax.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/Parallax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntPropertyMarkerValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue<",
        "Landroid/support/v17/leanback/widget/Parallax$IntProperty;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFactionOfMax:F

.field private final mValue:I


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/Parallax$IntProperty;I)V
    .locals 1
    .param p1, "property"    # Landroid/support/v17/leanback/widget/Parallax$IntProperty;
    .param p2, "value"    # I

    .line 234
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;-><init>(Landroid/support/v17/leanback/widget/Parallax$IntProperty;IF)V

    .line 235
    return-void
.end method

.method constructor <init>(Landroid/support/v17/leanback/widget/Parallax$IntProperty;IF)V
    .locals 0
    .param p1, "property"    # Landroid/support/v17/leanback/widget/Parallax$IntProperty;
    .param p2, "value"    # I
    .param p3, "fractionOfMax"    # F

    .line 238
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;-><init>(Ljava/lang/Object;)V

    .line 239
    iput p2, p0, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;->mValue:I

    .line 240
    iput p3, p0, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;->mFactionOfMax:F

    .line 241
    return-void
.end method


# virtual methods
.method final getMarkerValue(Landroid/support/v17/leanback/widget/Parallax;)I
    .locals 3
    .param p1, "source"    # Landroid/support/v17/leanback/widget/Parallax;

    .line 247
    iget v0, p0, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;->mFactionOfMax:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;->mValue:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;->mValue:I

    .line 248
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/Parallax;->getMaxValue()F

    move-result v1

    iget v2, p0, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;->mFactionOfMax:F

    mul-float/2addr v1, v2

    .line 247
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method