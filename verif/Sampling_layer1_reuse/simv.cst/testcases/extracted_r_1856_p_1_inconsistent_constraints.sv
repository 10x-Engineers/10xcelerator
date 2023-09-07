class c_1856_1;
    integer i = -308;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1856_1;
    c_1856_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1x000zzxx1xxxz101zxzzxx00xx100xzxzzzxzzzzxzxzxzxxzzzzzzxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
