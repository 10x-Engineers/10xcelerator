class c_1004_1;
    integer i = -166;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1004_1;
    c_1004_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100xx0zz00xx01z1zz10xz011x01z0x1xzzzxzzzxxxzxzzzzzzzxzxzzzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
