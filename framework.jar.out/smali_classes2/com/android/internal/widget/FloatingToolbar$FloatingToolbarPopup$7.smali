.class Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 20

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v15, 0x0

    return v15

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set3(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;F)F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set4(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;F)F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get12(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)F

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set5(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;F)F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get13(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)F

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set6(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;F)F

    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/internal/widget/FloatingToolbar;->-set2(Z)Z

    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/internal/widget/FloatingToolbar;->-set4(Z)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v15}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get3(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v3, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v11, 0x0

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodWindowVisibleHeight()I

    move-result v11

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    sub-int v16, v3, v11

    invoke-static/range {v15 .. v16}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set7(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;I)I

    new-instance v9, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v9}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    invoke-virtual {v9}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v15}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get3(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/content/Context;

    move-result-object v15

    const-string/jumbo v16, "window"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v7, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v10, v1, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v15, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set7(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;I)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v15}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get35(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get34(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    add-int v16, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set7(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;I)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v15}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get35(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)I

    move-result v15

    sub-int v16, v10, v11

    move/from16 v0, v16

    if-le v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    sub-int v16, v10, v11

    invoke-static/range {v15 .. v16}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set7(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;I)I

    goto/16 :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/internal/widget/FloatingToolbar;->-get4()Z

    move-result v15

    if-nez v15, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get27(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)F

    move-result v16

    sub-float v16, v13, v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;I)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get28(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)F

    move-result v16

    sub-float v16, v14, v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;I)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v15}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get12(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)F

    move-result v15

    sub-float v15, v13, v15

    float-to-int v4, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v15}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get13(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)F

    move-result v15

    sub-float v15, v14, v15

    float-to-int v5, v15

    mul-int v15, v4, v4

    mul-int v16, v5, v5

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get32(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get32(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)I

    move-result v17

    mul-int v16, v16, v17

    move/from16 v0, v16

    if-lt v15, v0, :cond_2

    const/4 v15, 0x1

    invoke-static {v15}, Lcom/android/internal/widget/FloatingToolbar;->-set2(Z)Z

    const/4 v15, 0x1

    invoke-static {v15}, Lcom/android/internal/widget/FloatingToolbar;->-set3(Z)Z

    :cond_2
    invoke-static {}, Lcom/android/internal/widget/FloatingToolbar;->-get3()Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v15, v13, v14}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-wrap2(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;FF)Z

    move-result v15

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get4(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Point;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get5(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)I

    move-result v17

    add-int v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get4(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Point;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get6(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)I

    move-result v18

    add-int v17, v17, v18

    invoke-static/range {v15 .. v17}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-wrap4(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;II)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v15}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get26(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/PopupWindow;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get4(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Point;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get4(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Point;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get26(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/PopupWindow;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get26(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/PopupWindow;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v19

    invoke-virtual/range {v15 .. v19}, Landroid/widget/PopupWindow;->update(IIII)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v15, v13}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set5(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;F)F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v15, v14}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-set6(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;F)F

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
