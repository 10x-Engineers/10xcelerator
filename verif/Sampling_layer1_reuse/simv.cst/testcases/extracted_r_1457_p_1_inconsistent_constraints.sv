class c_1457_1;
    integer i = -241;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1457_1;
    c_1457_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x100xx1z1xxx100zzz01zxx1x1z1zxxzzxxzzxxxzxzzxxxxzzzxzxzxzxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
