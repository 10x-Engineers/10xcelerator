class c_2960_1;
    integer i = -492;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2960_1;
    c_2960_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx10z0x0x01z1xxzzx1zxxzz0101zx0xzxxzzzzzxzzxzzzzzzzzzzxxxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
