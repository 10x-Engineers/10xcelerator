class c_977_1;
    integer i = -161;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_977_1;
    c_977_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100xxx0xz111110111x0111zzz101100xxzxxzzzxxzxzxzzzzzxxxzzxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
