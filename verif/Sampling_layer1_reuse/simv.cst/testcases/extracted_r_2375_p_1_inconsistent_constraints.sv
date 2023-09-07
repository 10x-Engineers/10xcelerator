class c_2375_1;
    integer i = -394;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2375_1;
    c_2375_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x0x01zzxzx0x01z01z10xxx11xz0zzzzzzzxzzxxzxzxxzxzzxxxzxxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
