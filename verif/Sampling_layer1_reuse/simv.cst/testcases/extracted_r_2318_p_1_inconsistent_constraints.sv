class c_2318_1;
    integer i = -385;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2318_1;
    c_2318_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1011x0zx10z0z000x01xz1xxx0x011xxzzxxzzxzxxzxxzxzxzxxxzzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
