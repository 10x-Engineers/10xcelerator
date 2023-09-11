class c_2457_1;
    integer i = -408;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2457_1;
    c_2457_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11x0zz111z11z1z011x01xzxx011x0zzxzxxzzxxxxzxxzzzzxzxzzzzzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
