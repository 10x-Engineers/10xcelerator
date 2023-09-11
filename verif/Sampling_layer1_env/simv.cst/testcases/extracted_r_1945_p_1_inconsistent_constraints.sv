class c_1945_1;
    integer i = -323;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1945_1;
    c_1945_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z1zx1x111xx0x001zz1z0zx0xxzzx1xzxzxxxzzxxzxxzzxzzzzxzxzzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
