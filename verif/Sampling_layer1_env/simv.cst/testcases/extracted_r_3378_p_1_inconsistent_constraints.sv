class c_3378_1;
    integer i = -561;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3378_1;
    c_3378_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01z1x1x100xx11xzxx1zx00z01xz1z0xzzxxxzzzxxzxzzxzzzxxzxxxzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
