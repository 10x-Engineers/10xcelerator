class c_2296_1;
    integer i = -381;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2296_1;
    c_2296_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz11x101x01z0z00z0x000x0xx110xzxzxzxzzzzxxxzxzxxxzzzzxxxxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
