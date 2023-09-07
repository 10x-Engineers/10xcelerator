class c_2764_1;
    integer i = -459;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2764_1;
    c_2764_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z10z00101xx11xz111xx11z0x01z000xxzxzxxxzzxxxzxzxxzxzzxzxzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
