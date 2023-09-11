class c_2155_1;
    integer i = -358;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2155_1;
    c_2155_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx1z01z10z0x001zz01101x000xxz00xxzzxxxxxxxzzxzxxxzxxxxxzzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
