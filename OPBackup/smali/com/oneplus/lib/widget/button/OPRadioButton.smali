.class public Lcom/oneplus/lib/widget/button/OPRadioButton;
.super Lcom/oneplus/lib/widget/button/OPCompoundButton;
.source "OPRadioButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/button/OPRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 22
    const v0, 0x101007e

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/button/OPRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/oneplus/a/b$l;->Oneplus_DeviceDefault_Widget_Material_CompoundButton_RadioButton:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/button/OPRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 54
    invoke-static {p1, p3}, Lcom/oneplus/lib/widget/a/b;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/oneplus/lib/widget/button/OPCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 76
    const-class v0, Lcom/oneplus/lib/widget/button/OPRadioButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 84
    const-class v0, Lcom/oneplus/lib/widget/button/OPRadioButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-super {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->toggle()V

    .line 69
    :cond_0
    return-void
.end method
