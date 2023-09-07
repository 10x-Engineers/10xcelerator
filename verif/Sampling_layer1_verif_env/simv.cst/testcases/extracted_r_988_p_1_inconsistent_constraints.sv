class c_988_1;
    integer i = -163;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_988_1;
    c_988_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xxx00xxxx1z010zzzzz01z000xz1zxzxzzzxzxzzzxzzxxxxzxxxzxxxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
