class c_2355_1;
    integer i = -391;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2355_1;
    c_2355_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z1x0zz111z01x0z011xxzz0x0zzxz1xxzxzxzzxxzzzxzzzxzxxzzzxzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
