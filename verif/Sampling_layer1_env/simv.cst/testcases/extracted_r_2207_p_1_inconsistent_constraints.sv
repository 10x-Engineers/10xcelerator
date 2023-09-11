class c_2207_1;
    integer i = -366;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2207_1;
    c_2207_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz0xz1zzzx1z0z000xz1xxxzzzzxz01xxzzxzxxzxzzzxzxzxzxxxxxzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
