class c_2167_1;
    integer i = -360;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2167_1;
    c_2167_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xx0xxxx1xz1zx1xzx010x1x1x1xzz0xzzxxzzzxxzzzxzxzxzxxzzzzxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram