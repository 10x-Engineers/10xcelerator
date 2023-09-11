class c_616_1;
    integer i = -101;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_616_1;
    c_616_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xx1x1xz1x11xxxxzxx11zz0xzxxzz0zxxzzxzzxzxxxxzzzxzxzxxxxxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
