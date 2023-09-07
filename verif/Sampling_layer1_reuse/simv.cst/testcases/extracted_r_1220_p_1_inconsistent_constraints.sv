class c_1220_1;
    integer i = -202;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1220_1;
    c_1220_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx1xzx0zx00xxx10x11zzxz0z01xx00zzzxzzxzxxzzzzxxzzxzzxzxxzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
