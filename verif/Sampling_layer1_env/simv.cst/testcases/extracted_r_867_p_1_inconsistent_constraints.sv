class c_867_1;
    integer i = -143;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_867_1;
    c_867_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z1z1zxzx1x010zz01x1xx001x0x0zzxxzxxzxzxzxzxzxzzzxzxzxzxxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
