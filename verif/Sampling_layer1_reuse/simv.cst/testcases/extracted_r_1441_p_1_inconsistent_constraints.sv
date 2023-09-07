class c_1441_1;
    integer i = -239;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1441_1;
    c_1441_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10000zx0x0110x100xz01z1zx1xzzxzzxxxxxzzxxxzxzzxxxzzxxxzxzzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
