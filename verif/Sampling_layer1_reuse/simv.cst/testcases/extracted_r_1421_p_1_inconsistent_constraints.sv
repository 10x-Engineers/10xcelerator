class c_1421_1;
    integer i = -235;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1421_1;
    c_1421_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxx1xx01z1z0100001z0zxx101x0zz1zxzxxzzxzxxxxxxzxxxzzxzxxxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
