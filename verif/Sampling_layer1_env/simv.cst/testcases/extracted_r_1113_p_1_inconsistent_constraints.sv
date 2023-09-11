class c_1113_1;
    integer i = -184;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1113_1;
    c_1113_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z1zxx1x0xzzzzx011z1z01zz01101zxxzzzzxzxzxzzxzxzzzxxxzxzxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
