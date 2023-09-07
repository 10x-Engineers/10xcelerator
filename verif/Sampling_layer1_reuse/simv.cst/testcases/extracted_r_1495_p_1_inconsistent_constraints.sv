class c_1495_1;
    integer i = -248;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1495_1;
    c_1495_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0x100x00xx1zzz1x0zx1zz0zx00xzxzzxxzxzxzzxzzzxxzzxzzzzxxxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
