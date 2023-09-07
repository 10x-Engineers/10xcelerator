class c_1753_1;
    integer i = -291;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1753_1;
    c_1753_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz00z0x1110101x01z1xx1xzxxxxx111xxzxxzxzxzxzzxzzxxxxxzzxxzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
