class c_1337_1;
    integer i = -221;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1337_1;
    c_1337_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z01xz10x1010x1xz1z1x1xz1z1z1xzzxzxzzxxzzzzzzxxxzxxzxzxzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
