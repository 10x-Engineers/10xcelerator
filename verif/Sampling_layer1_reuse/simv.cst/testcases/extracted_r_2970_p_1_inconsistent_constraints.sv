class c_2970_1;
    integer i = -493;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2970_1;
    c_2970_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010011x1001z0z10xxxx011xxzxx0z1zzzxzzxzzzxzzxxxzxxxzxzzzxzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
