class c_1695_1;
    integer i = -281;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1695_1;
    c_1695_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111110z1x0x11zz01z1000x01z1z1z1zxzzzxxzxzzzzzxzzzxzxxzxxxzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
