class c_1236_1;
    integer i = -204;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1236_1;
    c_1236_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1z1zz110zx1xz01111001z0xxx01z0zxxzxxxxxxzzxxzxxxzzxxxzxxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
